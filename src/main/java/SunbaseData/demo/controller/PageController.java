package SunbaseData.demo.controller;

import SunbaseData.demo.Users.User;
import SunbaseData.demo.Users.UserRepo;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
public class PageController {

    @Autowired
    UserRepo userRepo;

    @GetMapping(value = "/login")
    public String loginPage(){
        return "login";
    }

    @GetMapping("/newCustomer")
    public String addCustomer(){
        return "newCustomer";
    }

    @PostMapping("/newCustomer")
    public String addCustomer(@ModelAttribute("user")User user){
        userRepo.save(user);
        return "newCustomer";
    }

    @GetMapping("/home")
    public String showCustomer(Authentication authentication, Model model){
        ArrayList<User> viewCustomers = (ArrayList<User>) userRepo.findAll();
        for(User f:viewCustomers){
            System.out.println(f.getFirstName());
            System.out.println(f.getLastName());
            System.out.println(f.getStreet());
            System.out.println(f.getAddress());
            System.out.println(f.getCity());
            System.out.println(f.getState());
            System.out.println(f.getEmail());
            System.out.println(f.getPhone());
        }
        model.addAttribute("user", viewCustomers);
        System.out.println(viewCustomers);
        return "home";
    }

    @GetMapping("/delete/{idx}")
    public String deleteCustomer(@PathVariable("idx") long id){
        userRepo.deleteById(id);
        return "home";
    }

    @GetMapping("edit/{idx}")
    public String editCustomer(@PathVariable("idx") long id, Model model){
        User s = userRepo.findById(id).get();
        model.addAttribute("user", s);
        return  "home";
    }
}
