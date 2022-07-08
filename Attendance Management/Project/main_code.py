# Importing modules
import cv2
import urllib.request
import numpy as np
import os
from datetime import date
import face_recognition
import mysql.connector
import pickle


# Creating database connection
mydb = mysql.connector.connect(
    host = 'localhost',
    user='root',
    password = 'mysqlroot123',
    database = 'Semester5',
    auth_plugin = 'mysql_native_password')

# Creating cursor to execute SQL Statements
mycursor = mydb.cursor()


path = "students" # path of image directory
url = "http://192.168.3.109/cam-hi.jpg" # url of camera web server
tdate = date.today() # date of class whose attendance is being recorded
# ##'''cam.bmp / cam-lo.jpg /cam-hi.jpg / cam.mjpeg '''

# Storing student names and images in a list     
images = []
classNames = []
all_face_encodings = {}
myList = os.listdir(path)
# print(myList)
for cl in myList:
    curImg = cv2.imread(f'{path}/{cl}')
    images.append(curImg)
    classNames.append(os.path.splitext(cl)[0])
print("Done")

# # Saving face encodings to a file
# n = 0
# for img in images:
#     i = classNames[n].find("_")
#     img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
#     all_face_encodings[classNames[n][:i]] = face_recognition.face_encodings(img)[0]
#     n += 1
# print("Encodings Done")
# with open('dataset_faces.dat', 'wb') as f:
#    pickle.dump(all_face_encodings, f)

# Function to encode student faces
# def findEncodings(images):
    # encodeList = []
    # for img in images:
    #     img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    #     encode = face_recognition.face_encodings(img)[0]
    #     # encodeList.append(encode)
    # return encodeList
 
# Function to mark attendance in the database
def markAttendance(name):
    # To get seat number and time
    # temp = datetime.datetime()
    # time = str(temp.time())[:8]
    i = name.find("_")
    seat_num = name[i+1:]
    # Marking attendance
    sql = f"UPDATE CS_515 SET CLASS_DATE = '{tdate}', STATUS = 'P' WHERE SEAT_NO = '{seat_num}'"
    mycursor.execute(sql)
    mydb.commit()
    
# # encodeListKnown = findEncodings(images)
# print('Encoding Complete')
 
# # This block of code gives video streaming from the camera and detects faces and compares with stored images to mark attendance
while True:
    img_resp=urllib.request.urlopen(url)
    imgnp=np.array(bytearray(img_resp.read()),dtype=np.uint8)
    img=cv2.imdecode(imgnp,-1)
    imgS = cv2.resize(img, (0, 0), None, 0.25, 0.25)
    imgS = cv2.cvtColor(imgS, cv2.COLOR_BGR2RGB)
 
    facesCurFrame = face_recognition.face_locations(imgS)
    encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)
    
    # Loading encoded faces file
    with open('dataset_faces.dat', 'rb') as f:
	    all_face_encodings = pickle.load(f)
    # Grab the list of names and the list of encodings
    face_names = list(all_face_encodings.keys())
    face_encodings = np.array(list(all_face_encodings.values()))

    for encodeFace, faceLoc in zip(encodesCurFrame, facesCurFrame):
        # matches = face_recognition.compare_faces(encodeListKnown, encodeFace)
        # faceDis = face_recognition.face_distance(encodeListKnown, encodeFace)
        matches = face_recognition.compare_faces(face_encodings, encodeFace)
        faceDis = face_recognition.face_distance(face_encodings, encodeFace)
        matchIndex = np.argmin(faceDis)
 
        if matches[matchIndex]:
            name = classNames[matchIndex].upper()
            y1, x2, y2, x1 = faceLoc
            y1, x2, y2, x1 = y1 * 4, x2 * 4, y2 * 4, x1 * 4
            cv2.rectangle(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.rectangle(img, (x1, y2 - 35), (x2, y2), (0, 255, 0), cv2.FILLED)
            cv2.putText(img, name, (x1 + 6, y2 - 6), cv2.FONT_HERSHEY_COMPLEX, 1, (255, 255, 255), 2)
            markAttendance(name)
            print("attendance done")
 
    cv2.imshow('Webcam', img)
    key=cv2.waitKey(5)
    if key==ord('x'):
        break
cv2.destroyAllWindows()
