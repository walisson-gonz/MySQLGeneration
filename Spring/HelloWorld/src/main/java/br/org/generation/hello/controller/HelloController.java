package br.org.generation.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //Annotation que indica que é uma classe controladora
public class HelloController {
	
	@GetMapping("/hello")
	public String sayHello(){
		
		return "Hellow World";
	}
	
	@GetMapping("/habilidades")
	public String habilidades() {
		
		return "Habilidade: Persistencia | Mentalidade: Atenção aos Detalhes";
	}
	
	@GetMapping("/objetivos")
	public String objetivos() {
		
		return "Objetivo: Dominar a ferramenta Spring!";
	}
}
