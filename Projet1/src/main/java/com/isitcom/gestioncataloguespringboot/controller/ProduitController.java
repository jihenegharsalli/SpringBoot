package com.isitcom.gestioncataloguespringboot.controller;


import com.isitcom.gestioncataloguespringboot.entities.Categorie;
import com.isitcom.gestioncataloguespringboot.entities.Produit;
import com.isitcom.gestioncataloguespringboot.service.categorie.IServiceCategorie;
import com.isitcom.gestioncataloguespringboot.service.produit.IServiceProduit;
import lombok.RequiredArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProduitController
{
    private final IServiceProduit sp;
    private  final IServiceCategorie sc;

    @GetMapping("/index")
    public String getAllProducts(Model m)
    {
        List<Produit> liste = sp.getAllProducts();
        m.addAttribute("products",liste);
        return "index";
    }
    
	@GetMapping("/indexcat")
	 public String getAllCategories(Model m) {
		List<Categorie>liste=sc.getAllCategories();
		m.addAttribute("categories", liste);
		return "indexcat";
	}

    @GetMapping("/chercher")
    public String getProductsByMc(@RequestParam(name = "keyword") String mc, Model m)
    {

        m.addAttribute("products",sp.getProductsBMC(mc));
        return "index";
    }

    @GetMapping("/supprimer")
    public String deletebyid (@RequestParam(name = "id") Long id, Model m)
    {
        sp.deleteProduct(id);
        return "redirect:/index";

    }
    @GetMapping("/ajouter")
    public String PageAjout (Model m)
    {
        m.addAttribute("categories",sc.getAllCategories());
        return "create";
    }
    
    @PostMapping("/add")
    public String addProduct(
                            @RequestParam("nom") String nom,
                             @RequestParam("prix") String prix,
                             @RequestParam("quantite") String quantite,
                             @RequestParam("categorie") String categorie,
                             Model m) {
        // Convert to appropriate types
        Double parsedPrix = Double.parseDouble(prix);
        int parsedQuantite = Integer.parseInt(quantite);
        long parsedCategorie = Long.parseLong(categorie);
        Produit p = new Produit(nom,parsedPrix,parsedQuantite,sc.getCategorie(parsedCategorie));
        sp.addProduct(p);

        return "redirect:/index";
    }

     
    @GetMapping("/modifier")
    public String Modifier (@RequestParam(name = "id") Long id, Model m)
    {
        Produit p = sp.getProduct(id);
        m.addAttribute("pr",p);
        m.addAttribute("categories",sc.getAllCategories());


        return "update";

    }
    //thezni ll page bech nmodifi 
    
    @PostMapping("/updateee")
    public String ModifyProduct(
            @RequestParam("id") String id,
            @RequestParam("nom") String nom,
            @RequestParam("prix") String prix,
            @RequestParam("quantite") String quantite,
            @RequestParam("categorie") String categorie,
            Model m) {
        // Convert to appropriate types

        long ParsedId = Long.parseLong(id);
        Double parsedPrix = Double.parseDouble(prix);
        int parsedQuantite = Integer.parseInt(quantite);
        long parsedCategorie = Long.parseLong(categorie);
        sp.updateProduct(new Produit(ParsedId,nom,parsedPrix,parsedQuantite,sc.getCategorie(parsedCategorie)));


        return "redirect:/index";
    }
    //ba3d mat7ot les valeur ejdod tbadalhom 
    
    
    
    
    //CATEGORIEEEEEEE MATMESECH YA JIHENEEEEE
    
    
    
    @GetMapping("/ajoutcategorie")
    public String ajoutCategorie(Model m) {
        // Vous pouvez ajouter des logiques supplémentaires ici si nécessaire
        return "ajoutcategorie"; // Assurez-vous que cela correspond au nom de votre fichier JSP
    }

    @PostMapping("/saveCategorie")
    public String addCategorie(
            @RequestParam("nomc") String nomCategorie,
            Model m) {
        // Ajoutez la logique pour ajouter une nouvelle catégorie
        Categorie nouvelleCategorie = new Categorie();
        nouvelleCategorie.setNom(nomCategorie);
        sc.addcategorie(nouvelleCategorie);

        return "redirect:/indexcat"; // Redirigez vers la liste des catégories après l'ajout
    }


//    
//  
    @PostMapping("/modifierc")
    public String modifierCategorie(@RequestParam("id") Long id,
                                    @RequestParam("nomc") String nomCategorie,
                                    Model m) {
        Categorie categorie = new Categorie(id, nomCategorie);
        sc.updateCategorie(categorie); 
        return "redirect:/indexcat"; // Redirect to the category list page
    }

    @GetMapping("/firas")
    public String modifierCategorie(@RequestParam(name = "id") Long id, Model m) {
        Categorie categorie = sc.getCategorie(id);
        m.addAttribute("categorie", categorie);
        return "updatecat";
    }


    
    
    @GetMapping("/supprimerc")
    public String supprimercat (@RequestParam(name = "id") Long id, Model m)
    {
        sc.DeleteCategorie(id);
        return "redirect:/indexcat";

    }
    

  






}
