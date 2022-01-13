package org.sid.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_prix;
import org.sid.entities.produits_stock;
import org.sid.entities.users;

public class CatalogueDAOJPAImpl  implements ICatalogueDAO{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<produits_stock> listsProduits() {
			Query req=em.createQuery("SELECT p from produits_stock p");
			return req.getResultList();
	}

	@Override
	public void addProduit(produits_stock p) {
		em.persist(p);			
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		return em.find(produits_stock.class, codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits_stock p=getProduits(codePdt);
		em.remove(p);	
	}

	@Override
	public void updateProduit(produits_stock p) {
		em.merge(p);
	}

	@Override
	public List<users> listsUsers() {
		Query req=em.createQuery("SELECT u from users u");
		return req.getResultList();
	}

	@Override
	public void addUser(users u) {
		em.persist(u);	
	}

	@Override
	public void updateUser(users u) {
		em.merge(u);		
	}

	@Override
	public int addUsers(users u) {
		em.persist(u);
		return u.getCodeUser(); 
	}

	@Override
	public users getUser(int codeUser) {
		return em.find(users.class, codeUser);
	}

	@Override
	public void deleteUser(int codeUser) {
		users u=getUser(codeUser);
		em.remove(u);
		
	}

	@Override
	public void addCommande(commandes c) {
		em.persist(c);
		
	}

	@Override
	public List<commandes> listsCommandes() {
		Query req=em.createQuery("SELECT c from commandes c");
		return req.getResultList();
	}

	@Override
	public commandes getCommande(int codeCmd) {
		return em.find(commandes.class, codeCmd);
	}

	@Override
	public void deleteCommande(int codeCmd) {
		commandes c=getCommande(codeCmd);
		em.remove(c);
		
	}

	@Override
	public void updateCommande(commandes c) {
		em.merge(c);
		
	}

	@Override
	public void addApprovisionnement(produits_approvisionnement a) {
		em.persist(a);
		
	}

	@Override
	public List<produits_approvisionnement> listsApprovisionnements() {
		Query req=em.createQuery("SELECT a from produits_approvisionnement a");
		return req.getResultList();
	}

	@Override
	public produits_approvisionnement getApprovisionnement(int codePdt) {
		return em.find(produits_approvisionnement.class, codePdt);
	}

	@Override
	public void deleteApprovisionnement(int codePdt) {
		produits_approvisionnement a=getApprovisionnement(codePdt);
		em.remove(a);
		
	}

	@Override
	public void updateApprovisionnement(produits_approvisionnement a) {
		em.merge(a);
		
	}

}
