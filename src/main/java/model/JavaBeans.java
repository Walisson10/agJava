package model;

public class JavaBeans {
	private String id;
	private String nome;
	private String vlatu;
	private String vlanti;
	
	
	public JavaBeans() {
		super();
		
	}
	
	public JavaBeans(String id, String nome, String vlatu, String vlanti) {
		super();
		this.id = id;
		this.nome = nome;
		this.vlatu = vlatu;
		this.vlanti = vlanti;
	}

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getVlatu() {
		return vlatu;
	}
	
	public void setVlatu(String vlatu) {
		this.vlatu = vlatu;
	}
	
	public String getVlanti() {
		return vlanti;
	}
	
	public void setVlanti(String vlanti) {
		this.vlanti = vlanti;
	}
	
	
	
}
