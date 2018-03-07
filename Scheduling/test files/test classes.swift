//
//  test classes.swift
//  Scheduling
//
//  Created by macbook on 06.03.2018.
//  Copyright © 2018 Aksiniya. All rights reserved.
//

import Foundation

class Profile{
    var nickname : String
    var name : String
    var phoneNumber: String
    
    init(nickname: String, name: String, phoneNumber: String) {
        self.nickname = nickname
        self.name = name
        self.phoneNumber = phoneNumber
    }
}

class Salon : Profile{
    var description: String
    var city: String
    var adress: String
    var services : [Service]
    
    init(nickname: String, name: String, phoneNumber: String, description: String, city: String, adress: String, services: [Service]) {
        self.description = description
        self.city = city
        self.adress = adress
        self.services = services
        super.init(nickname: nickname, name: name, phoneNumber: phoneNumber)
    }
    
    func addService(service: Service){
        self.services.append(service)
    }
    
}

class Client: Profile{
    var appointments: [ClientAppointment]
    
    init(nickname: String, name: String, phoneNumber: String, appointments: [ClientAppointment]) {
        self.appointments = appointments
        super.init(nickname: nickname, name: name, phoneNumber: phoneNumber)
    }
    
    func addAppointment(appointment: ClientAppointment){
        self.appointments.append(appointment)
    }
}

class Service{
    var name : String
    var description: String
    var masters : [Master]
    
    init(name: String, description: String, masters: [Master]) {
        self.name = name
        self.description = description
        self.masters = masters
    }
    
    func addMaster(master: Master){
        self.masters.append(master)
    }
}

class ClientAppointment{
    var salonName : String
    var serviceName : String
    var timeAndDate : String // or : date? hh:mm dd (число)
    var telephoneNumberOfSalon : String
    
    init(salonName : String, serviceName: String, timeAndDate: String, telephoneNumberOfSalon : String) {
        self.salonName = salonName
        self.serviceName = serviceName
        self.timeAndDate = timeAndDate
        self.telephoneNumberOfSalon = telephoneNumberOfSalon
    }
}

class Master{
    var name : String
    var timeTable : TimeTable

    init(name: String, timeTable:TimeTable) {
        self.name = name
        self.timeTable = timeTable
    }
}

class TimeTable{
    var DaysInTable : [DayInTable]
    
    init(DaysInTable: [DayInTable]) {
        self.DaysInTable = DaysInTable
    }
}

var WeekDays = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

class DayInTable{
    var dayName : String // from WeekDays[]
    var dayOff : Bool // выходной
    var timeFrom : String
    var timeTo : String
    var appointments : [NoteInTable]
    
    init(dayName : String, dayOff : Bool, timeFrom : String, timeTo : String, appointments : [NoteInTable]) {
        self.dayName = dayName
        self.dayOff = dayOff
        self.timeFrom = timeFrom
        self.timeTo = timeTo
        self.appointments = appointments
    }
    
    func addAppointment(appointment: NoteInTable){
        self.appointments.append(appointment)
    }
}

class NoteInTable{
    var timeFrom : String
    var timeTo : String
    
    init(timeFrom : String, timeTo : String ) {
        self.timeFrom = timeFrom
        self.timeTo = timeTo
    }
}