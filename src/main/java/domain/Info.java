/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

/**
 *
 * @author Ruben
 */
public class Info {
    
    private String description;
    private int calories;
    private String allergies;
    private String ingredients;
    
    public Info(String desc, int cal, String all, String ing){
        this.description = desc;
        this.calories = cal;
        this.allergies = all;
        this.ingredients = ing;
    }
    
    public String getDescription(){
        return this.description;
    }
    
}
