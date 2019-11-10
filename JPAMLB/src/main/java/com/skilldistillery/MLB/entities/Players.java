package com.skilldistillery.MLB.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Players {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "home_runs")
	private int homeruns;

	@Column(name = "batting_avg")
	private double battingAverage;

	@Column(name = "uniform_number")
	private int uniformNumber;

	private int rbi;
	private String position;
	private String team;
	private int age;

	public Players() {
		super();
	}

	public Players(int id, String firstName, String lastName, int homeruns, double battingAverage, int rbi,
			String position, String team, int age, int uniformNumber) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.homeruns = homeruns;
		this.battingAverage = battingAverage;
		this.rbi = rbi;
		this.position = position;
		this.team = team;
		this.age = age;
		this.uniformNumber = uniformNumber;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Players [id=");
		builder.append(id);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", LastName=");
		builder.append(lastName);
		builder.append(", homeruns=");
		builder.append(homeruns);
		builder.append(", battingAverage=");
		builder.append(battingAverage);
		builder.append(", uniformNumber=");
		builder.append(uniformNumber);
		builder.append(", rbi=");
		builder.append(rbi);
		builder.append(", position=");
		builder.append(position);
		builder.append(", team=");
		builder.append(team);
		builder.append(", age=");
		builder.append(age);
		builder.append("]");
		return builder.toString();
	}

	public int getUniformNumber() {
		return uniformNumber;
	}

	public void setUniformNumber(int uniformNumber) {
		this.uniformNumber = uniformNumber;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getBattingAverage() {
		return battingAverage;
	}

	public void setBattingAverage(double battingAverage) {
		this.battingAverage = battingAverage;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
		lastName = lastName;
	}

	public int getHomeruns() {
		return homeruns;
	}

	public void setHomeruns(int homeruns) {
		this.homeruns = homeruns;
	}

	public int getRbi() {
		return rbi;
	}

	public void setRbi(int rbi) {
		this.rbi = rbi;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + age;
		long temp;
		temp = Double.doubleToLongBits(battingAverage);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + homeruns;
		result = prime * result + id;
		result = prime * result + ((position == null) ? 0 : position.hashCode());
		result = prime * result + rbi;
		result = prime * result + ((team == null) ? 0 : team.hashCode());
		result = prime * result + uniformNumber;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Players other = (Players) obj;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (age != other.age)
			return false;
		if (Double.doubleToLongBits(battingAverage) != Double.doubleToLongBits(other.battingAverage))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (homeruns != other.homeruns)
			return false;
		if (id != other.id)
			return false;
		if (position == null) {
			if (other.position != null)
				return false;
		} else if (!position.equals(other.position))
			return false;
		if (rbi != other.rbi)
			return false;
		if (team == null) {
			if (other.team != null)
				return false;
		} else if (!team.equals(other.team))
			return false;
		if (uniformNumber != other.uniformNumber)
			return false;
		return true;
	}

}
