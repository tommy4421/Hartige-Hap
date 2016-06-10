/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.Objects;

/**
 *
 * @author Sean
 */
public class Pair<K, V> {
    private K key;
    private V value;
    
    public Pair(K key, V value){
        this.key = key;
        this.value = value;
    }

    /**
     * @return the first
     */
    public K getKey() {
        return key;
    }

    /**
     * @param key the first to set
     */
    public void setKey(K key) {
        this.key = key;
    }

    /**
     * @return the second
     */
    public V getValue() {
        return value;
    }

    /**
     * @param value the second to set
     */
    public void setValue(V value) {
        this.value = value;
    }
    
    @Override
    public boolean equals(Object e){
        if(this == e)
            return true;
        else if(e instanceof Pair){
            Pair pair = (Pair) e;
            
            return pair.key == this.key;
        }
        
        return false;
    }
}
