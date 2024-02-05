package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.constants.TaxType;
import com.example.model.App;
import com.example.service.TaxTypeService;

@Controller
@RequestMapping("/taxTypes")
public class TaxTypeController {
	@Autowired
	private TaxTypeService taxTypeService;

	@GetMapping
	public String index(Model model) {
		return "tax_type/index";
	}

	@GetMapping("/{id}")
	public String show(Model model, @PathVariable("id") Long id) {
		return "tax_type/show";
	}

	@GetMapping(value = "/new")
	public String create(Model model, @ModelAttribute TaxType entity) {
		model.addAttribute("taxType", entity);
		return "tax_type/form";
	}

	@PostMapping
	public String create(@Validated @ModelAttribute TaxType entity, BindingResult result,
			RedirectAttributes redirectAttributes) {
		TaxType taxType = null;
		return "redirect:/taxTypes";
	}

	@DeleteMapping("/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		return "redirect:/taxTypes";
	}

}
