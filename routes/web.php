<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Login
Route::get('/login/index', 'LoginController@index')->name('login.index');
Route::post('/login/index', 'LoginController@valid');

//Logout
Route::get('/logout', 'LogoutController@index')->name('logout.index');

//Registration
Route::get('/registration', 'registrationController@index') -> name('registration');
Route::post('/registration', 'registrationController@signup') -> name('postregistration');




Route::group(['middleware'=>['sess']], function(){


//Doctor Route Start

Route::get('/doctor/index', 'DoctorController@index')->name('doctor.index');

//Patient
Route::get('/doctor/Patient', 'DoctorController@addpatient')->name('doctor.addpatient');
Route::post('/doctor/Patient', 'DoctorController@patientCreate');

Route::get('/doctor/PatientList', 'DoctorController@patientlist')->name('doctor.patientlist');

//Route::get('/search','SearchController@search')->name('search');

Route::get('/doctor/EditPatient/{sid}', 'DoctorController@editpact')->name('doctor.editpatient');
Route::post('/doctor/EditPatient/{sid}', 'DoctorController@editPatient');

Route::get('/doctor/PatientDelete/{sid}', 'DoctorController@deletepatient')->name('doctor.deletepatient');
Route::post('/doctor/PatientDelete/{sid}', 'DoctorController@destroypatient');

//Appoint
Route::get('/doctor/AppointList', 'DoctorController@viewappoint')->name('doctor.viewappoint');

//Profile
Route::get('/doctor/Profile', 'DoctorController@profile')->name('doctor.profile');
Route::post('/doctor/Profile', 'DoctorController@editProfile');

//Change Password
Route::get('/doctor/ChangePassword', 'DoctorController@cngpassword')->name('doctor.cngpassword');
Route::post('/doctor/ChangePassword', 'DoctorController@Password');

//NoticeBoard
Route::get('/doctor/NoticeboardList', 'DoctorController@noticelist')->name('doctor.noticelist');

//Blood
Route::get('/doctor/Blood', 'DoctorController@addblood')->name('doctor.addblood');
Route::post('/doctor/Blood', 'DoctorController@bloodlistCreate');

Route::get('/doctor/BloodList', 'DoctorController@bloodlist')->name('doctor.bloodlist');

Route::get('/doctor/bloodDelete/{sid}', 'DoctorController@deleteblood')->name('doctor.deleteblood');
Route::post('/doctor/bloodDelete/{sid}', 'DoctorController@destroyblood');



//Prescription
Route::get('/doctor/Prescription', 'DoctorController@addprescription')->name('doctor.addprescription');
Route::post('/doctor/Prescription', 'DoctorController@prescriptionCreate');

Route::get('/doctor/PrescriptionList', 'DoctorController@prescriptionlist')->name('doctor.prescriptionlist');

Route::get('/doctor/EditPrescription/{sid}', 'DoctorController@editprescription')->name('doctor.editprescription');
Route::post('/doctor/EditPrescription/{sid}', 'DoctorController@editPrescrip');

Route::get('/doctor/PrescriptionDelete/{sid}', 'DoctorController@deleteprescription')->name('doctor.deleteprescription');
Route::post('/doctor/PrescriptionDelete/{sid}', 'DoctorController@destroyprescription');

//Bed Allotment
Route::get('/doctor/BedAllotment', 'DoctorController@addbed')->name('doctor.addbed');
Route::post('/doctor/BedAllotment', 'DoctorController@bedCreate');

Route::get('/doctor/BedAllotmentList', 'DoctorController@bedlist')->name('doctor.bedlist');

Route::get('/doctor/EditBedAllotment/{sid}', 'DoctorController@editbed')->name('doctor.editbed');
Route::post('/doctor/EditBedAllotment/{sid}', 'DoctorController@editBedAllot');

Route::get('/doctor/BedAllotmentDelete/{sid}', 'DoctorController@deletebed')->name('doctor.deletebed');
Route::post('/doctor/BedAllotmentDelete/{sid}', 'DoctorController@destroybed');

//Operation Report
Route::get('/doctor/OperationReport', 'DoctorController@addoperation')->name('doctor.addoperation');
Route::post('/doctor/OperationReport', 'DoctorController@operationCreate');

Route::get('/doctor/OperationReportList', 'DoctorController@operationlist')->name('doctor.operationlist');

Route::get('/doctor/EditOperationReport/{sid}', 'DoctorController@editoperation')->name('doctor.editoperation');
Route::post('/doctor/EditOperationReport/{sid}', 'DoctorController@editReport');

Route::get('/doctor/OperationReportDelete/{sid}', 'DoctorController@deleteoperation')->name('doctor.deleteoperation');
Route::post('/doctor/OperationReportDelete/{sid}', 'DoctorController@destroyoperation');

//Doctor Route Ends



Route::get('/invoice/{sid}', 'DoctorController@generateInvoice')->name('order.invoice');


});



