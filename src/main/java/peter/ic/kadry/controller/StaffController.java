package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.Staff;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.*;

@Controller
@RequestMapping("/staff/personal")
public class StaffController {
    final StaffRepository staffRepository;
    final CitizenshipRepository citizenshipRepository;
    final GenderRepository genderRepositor;
    final PositionRepository positionRepository;
    final StatusRepository statusRepository;
    final RankRepository rankRepository;
    final DepartmentRepository departmentRepository;
    final InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository;
    final UsersRepository usersRepository;

    public StaffController(StaffRepository staffRepository,
                           CitizenshipRepository citizenshipRepository,
                           GenderRepository genderRepositor, PositionRepository positionRepository,
                           StatusRepository statusRepository, RankRepository rankRepository,
                           DepartmentRepository departmentRepository,
                           InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository,
                           UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.citizenshipRepository = citizenshipRepository;
        this.genderRepositor = genderRepositor;
        this.positionRepository = positionRepository;
        this.statusRepository = statusRepository;
        this.rankRepository = rankRepository;
        this.departmentRepository = departmentRepository;
        this.inheritanceOfDepartmentsRepository = inheritanceOfDepartmentsRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String card(Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        dictionaries(model);


        return "staff.personal";
    }

    @GetMapping("/get")
    public String getCard(@RequestParam(defaultValue = "0") int id, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        dictionaries(model);

        try {
            Staff staff = staffRepository.findById(id);
            if (user.getDepartment().getCode() == staff.getDepartment().getCode()
                    || inheritanceOfDepartmentsRepository.findInheritance(user.getDepartment().getCode()).contains(staff.getDepartment().getCode())) {
                model.addAttribute("staffProfile", staff);
            }
        } catch (Exception e) {
            model.addAttribute("errors", e.getMessage());
        }

        return "staff.personal";
    }

    @PostMapping("/add")
    public String addCard(Staff staff, BindingResult bindingResult, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        dictionaries(model);

        try {
            if (user.getDepartment().getCode() == staff.getDepartment().getCode()
                    || inheritanceOfDepartmentsRepository.findInheritance(user.getDepartment().getCode()).contains(staff.getDepartment().getCode())) {
                model.addAttribute("staffProfile", staffRepository.save(staff));
                model.addAttribute("resultMessage", "Карточка успешно сохранена");
            }
        } catch (Exception e) {
            if (bindingResult.hasErrors()) {
                model.addAttribute("bindingResult", bindingResult);
            }
            model.addAttribute("errors", e.getMessage());
        }
        return "staff.personal";
    }

    public void dictionaries(Model model) {
        model.addAttribute("citizenship", citizenshipRepository.findAll());
        model.addAttribute("gender", genderRepositor.findAll());
        model.addAttribute("position", positionRepository.findAll());
        model.addAttribute("rank", rankRepository.findAll());
        model.addAttribute("department", departmentRepository.findAll());
        model.addAttribute("status", statusRepository.findAll());
    }
}
