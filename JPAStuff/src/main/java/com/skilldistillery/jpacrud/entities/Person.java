package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Person {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
//	@Min(1)
//	@Max(20)
	@Column(name="torso_thickness")
	private double torsoThickness;
	
	@Column(name="arm_thickness")
	private double armThickness;
	
	@Column(name="leg_thickness")
	private double legThickness;
	
	@Column(name="eye_size")
	private double eyeSize;
	
	@Column(name="eye_color")
	private String eyeColor;
	
	@Column(name="skin_color")
	private String skinColor;
	
	private String expression;
	

	@Override
	public String toString() {
		return "Person [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", torsoThickness="
				+ torsoThickness + ", armThickness=" + armThickness + ", legThickness=" + legThickness + ", eyeSize="
				+ eyeSize + ", eyeColor=" + eyeColor + ", skinColor=" + skinColor + ", expression=" + expression + "]";
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public double getTorsoThickness() {
		return torsoThickness;
	}

	public void setTorsoThickness(double torsoThickness) {
		this.torsoThickness = torsoThickness;
	}

	public double getArmThickness() {
		return armThickness;
	}

	public void setArmThickness(double armThickness) {
		this.armThickness = armThickness;
	}

	public double getLegThickness() {
		return legThickness;
	}

	public void setLegThickness(double legThickness) {
		this.legThickness = legThickness;
	}

	public double getEyeSize() {
		return eyeSize;
	}

	public void setEyeSize(double eyeSize) {
		this.eyeSize = eyeSize;
	}

	public String getEyeColor() {
		return eyeColor;
	}

	public void setEyeColor(String eyeColor) {
		this.eyeColor = eyeColor;
	}

	public String getSkinColor() {
		return skinColor;
	}

	public void setSkinColor(String skinColor) {
		this.skinColor = skinColor;
	}

	public String getExpression() {
		return expression;
	}

	public void setExpression(String expression) {
		this.expression = expression;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Person() {
		super();
	}

}
