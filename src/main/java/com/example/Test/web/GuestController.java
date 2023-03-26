package com.example.Test.web;


import com.example.Test.business.ReservationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/guests")
public class GuestController {
    private final ReservationService ReservationService;

    public GuestController(com.example.Test.business.ReservationService reservationService) {
        ReservationService = reservationService;
    }


    @RequestMapping(method = RequestMethod.GET)
    public String getGuests(Model model){
        model.addAttribute("guests",ReservationService.getHotelGuests());
        return "hotel-guests";
    }


}
