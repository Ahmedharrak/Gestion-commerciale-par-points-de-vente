package org.sid.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_prix;
import org.sid.entities.produits_stock;
import org.sid.entities.users;


public class CatalogueDAOImpl implements ICatalogueDAO {

	
	private List<produits_stock> produits = new ArrayList<produits_stock>();
	private Map<Integer, users> users = new HashMap<Integer, users>();
	private Map<Integer, produits_approvisionnement> approvisionnements = new HashMap<Integer, produits_approvisionnement>();
	private Map<Integer, commandes> commandes = new HashMap<Integer, commandes>();

	private static final Logger logger = LogManager.getLogger("HelloWorld");	
	public void initialisation() {
		System.out.print("www.ahmedharrak.com!");
		addProduit(new produits_stock( 10,300,"carnet","free",3));
		addProduit(new produits_stock( 12,400,"tele","free",30));
		addProduit(new produits_stock( 14,500,"carbon","free",300));

	}
	@Override
	public void addProduit(produits_stock p) {
		p.setCodePdt(produits.size() + 1);
		produits.add(p);
	}

	
	
	@Override
	public List<produits_stock> listsProduits() {
		return produits;			     
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		return produits.get(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits.remove(getProduits(codePdt));
	}

	@Override
	public void updateProduit(produits_stock p) {
		// TODO Auto-generated method stub

	}
	@Override
	public List<users> listsUsers() {
		return new ArrayList<users>(users.values());
	}
	@Override
	public void addUser(users u) {

		users.put(u.getCodeUser(), u);
	}
	@Override
	public void updateUser(users u) {
		users.put(u.getCodeUser(),u);		
	}
	@Override
	public int addUsers(org.sid.entities.users u) {
		return 0;
	}
	@Override
	public org.sid.entities.users getUser(int codeUser) {
		return users.get(codeUser);
	}
	@Override
	public void deleteUser(int codeUser) {
		users.remove(codeUser);
		
	}
	@Override
	public void addCommande(commandes c) {
		commandes.put(c.getCodeCmd(), c);
		
	}
	@Override
	public List<commandes> listsCommandes() {
		return new ArrayList<commandes>(commandes.values());
	}
	@Override
	public commandes getCommande(int codeCmd) {
		return commandes.get(codeCmd);
	}
	@Override
	public void deleteCommande(int codeCmd) {
		commandes.remove(codeCmd);
		
	}
	@Override
	public void updateCommande(commandes c) {
		commandes.put(c.getCodeCmd(), c);
		
	}
	@Override
	public void addApprovisionnement(produits_approvisionnement a) {
		approvisionnements.put(a.getCodePdt(), a);
		
	}
	@Override
	public List<produits_approvisionnement> listsApprovisionnements() {
		return new ArrayList<produits_approvisionnement>(approvisionnements.values());
	}
	@Override
	public produits_approvisionnement getApprovisionnement(int codePdt) {
		return approvisionnements.get(codePdt);
	}
	@Override
	public void deleteApprovisionnement(int codePdt) {
		approvisionnements.remove(codePdt);
		
	}
	@Override
	public void updateApprovisionnement(produits_approvisionnement a) {
		approvisionnements.put(a.getCodePdt(), a);
		
	}
	
	

	
	
}
