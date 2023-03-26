package com.example.Test.Webservice;


import com.example.Test.business.ReservationService;
import com.example.Test.business.RoomReservation;
import com.example.Test.data.Guest;
import com.example.Test.data.Room;
import com.example.Test.util.DateUtils;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api")
public class WebserviceController {
    private final DateUtils dateUtils;
    private final ReservationService reservationService;

    public WebserviceController(DateUtils dateUtils, ReservationService reservation) {
        this.dateUtils = dateUtils;
        this.reservationService = reservation;
    }

    @RequestMapping(path="/reservations", method = RequestMethod.GET)
    public List<RoomReservation> getReservations(@RequestParam(value="date", required = false)String dateString){
        Date date = this.dateUtils.createDateFromDateString(dateString);

        return this.reservationService.getRoomReservationsForDate(date);
    }

    @GetMapping("/guest")
    public List<Guest> getGuestes(){
        return this.reservationService.getHotelGuests();
    }

    @PostMapping("/guest")
    @ResponseStatus(HttpStatus.CREATED)
    public void addGuest(@RequestBody Guest guest){
        reservationService.addGuest(guest);
    }

    @GetMapping("/rooms")
    public List<Room> getRooms(){
        return this.reservationService.getRooms();
    }

   @DeleteMapping("/guest/{id}")
    public void deleteGuest(@PathVariable Long id){
        reservationService.deleteItem(id);
   }
}
