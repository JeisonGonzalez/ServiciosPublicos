/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author josef
 */
public class EntSubsidies {
    private String id_subsidy;
    private String energy_subsidy;
    private String gas_subsidy;
    private String water_subsidy;
    private String id_param_subsidy;

    public EntSubsidies() {
    }

    public EntSubsidies(String id_subsidy, String energy_subsidy, String gas_subsidy, String water_subsidy, String id_param_subsidy) {
        this.id_subsidy = id_subsidy;
        this.energy_subsidy = energy_subsidy;
        this.gas_subsidy = gas_subsidy;
        this.water_subsidy = water_subsidy;
        this.id_param_subsidy = id_param_subsidy;
    }

    public String getId_subsidy() {
        return id_subsidy;
    }

    public void setId_subsidy(String id_subsidy) {
        this.id_subsidy = id_subsidy;
    }

    public String getEnergy_subsidy() {
        return energy_subsidy;
    }

    public void setEnergy_subsidy(String energy_subsidy) {
        this.energy_subsidy = energy_subsidy;
    }

    public String getGas_subsidy() {
        return gas_subsidy;
    }

    public void setGas_subsidy(String gas_subsidy) {
        this.gas_subsidy = gas_subsidy;
    }

    public String getWater_subsidy() {
        return water_subsidy;
    }

    public void setWater_subsidy(String water_subsidy) {
        this.water_subsidy = water_subsidy;
    }

    public String getId_param_subsidy() {
        return id_param_subsidy;
    }

    public void setId_param_subsidy(String id_param_subsidy) {
        this.id_param_subsidy = id_param_subsidy;
    }
    
    
}
