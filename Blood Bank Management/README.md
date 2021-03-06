# Blood Bank Management System

## Screenshots
### Homepage
![homepage snap](https://github.com/gowther33/University-Projects/blob/master/Blood%20Bank%20Management/static/screenshot/homepage.PNG)
### Admin Dashboard
![dashboard snap](https://github.com/gowther33/University-Projects/blob/master/Blood%20Bank%20Management/static/screenshot/admin_dashboard.PNG)
### Donation Form
![invoice snap](https://github.com/gowther33/University-Projects/blob/master/Blood%20Bank%20Management/static/screenshot/donation_form.PNG)
### Pateint Blood Requests
![doctor snap](https://github.com/gowther33/University-Projects/blob/master/Blood%20Bank%20Management/static/screenshot/request_page.PNG)
### Logout
![doctor snap](https://github.com/gowther33/University-Projects/blob/master/Blood%20Bank%20Management/static/screenshot/logout.PNG)
---
## Functions

### Admin
- Create Admin account using following command
```
py manage.py createsuperuser
```
- After Login, can see Unit of blood of each blood group available, Number Of Donor, Number of blood request, Number of approved request, Total Unit of blood on Dashboard.
- Can View, Update, Delete Donor.
- Can View, Update, Delete Patient.
- Can View Donation Request made by donor and can approve or reject that request based on disease of donor.
- If Donation Request approved by admin then that unit of blood added to blood stock of that blood group.
- If Donation Request rejected by admin then 0 unit of blood added to stock.
- Can View Blood Request made by donor / patient and can approve or reject that request.
- If Blood Request approved by admin then that unit of blood reduced from blood stock of that blood group.
- If Blood Request rejected by admin then 0 unit of blood reduced from stock.
- Can see history of blood request.
- Can Update Unit Of Particular Blood Group.


### Donor
- Donor can create account by providing basic details.
- After Login, Donor can donate blood, After approval from admin only, blood will be added to blood stock.
- Donor can see their donation history with status (Pending, Approved, Rejected).
- Donor can also request for blood from blood stock.
- Donor can see their blood request history with status.
- Donor can see number of blood request Made, Approved, Pending, Rejected by Admin on their dashboard.
> **_NOTE:_**  Donor can donate blood and can also request for blood.


### Patient
- Create account (No Approval Required By Admin, Can Login After Signup)
- After Login, Can see number of blood request Made, Approved, Pending, Rejected by Admin on their dashboard.
- Patient can request for blood of specific blood group and unit from blood stock.
- Patient can see their blood request history with status (Pending, Approved, Rejected).

---

## HOW TO RUN THIS PROJECT
- Install Python version 3.7 or latest  (Dont forget to tick Add to Path while installing Python)
- Download This Project Zip Folder and Extract it to your local folder
- Change directory to project folder in Terminal(Command Prompt). Then run following Commands:

```
python -m pip install -r requirements. txt
```

```
py manage.py makemigrations
py manage.py migrate
py manage.py runserver
```
- Now enter the URL that you see in the terminal to your browser


