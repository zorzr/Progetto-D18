package menu;

import java.util.ArrayList;

/**
 * Class that represents a menu in the restaurant. It is described by :
 *  - a name
 *  - the number of guests that will order the menu
 *  - a list of the dishes offered by the menu ; each dish belongs to the class MenuElement
 */
public class Menu {
    private String name;
    private ArrayList<MenuElement> menuElementsList;
    private int nMenuGuests;

    /**
     * Constructor for an empty menu , initialized only with its name and a number of guests
     * @param name the name of the menu
     * @param nMenuGuests the number of guests to whom the menu is addressed
     */
    public Menu(String name, int nMenuGuests) {
        this.name = name;
        this.menuElementsList = new ArrayList<>();
        this.nMenuGuests = nMenuGuests;
    }

    /**
     * Method that adds a dish in the menu
     * @param newElement the element to be added
     */

    public void addElement(MenuElement newElement) {

        if(!menuElementsList.contains(newElement))  //check if newElement is already in the menuElementList
        menuElementsList.add(newElement);
    }

    /**
     * Methods that removes a dish from the menu
     * @param element the element to be removed
     */

    public void removeElement(MenuElement element) {
       menuElementsList.remove(element);
    }

    /**
     * Sets the number of guests that will chose this menu
     * @param nGuest the number of guests for the menu
     */
    public void setNMenuGuests(int nGuest) {
        this.nMenuGuests = nGuest;
    }

    /**
     * Calculates and returns the menu's cost by adding the prices of each dish in the menu
     * @return the menu's final cost
     */

    public double getMenuCost() {
        double menuCost = 0;
        for (MenuElement el : menuElementsList)
            menuCost += el.getPrice();
        return menuCost;
    }

    /**
     * Returns the number of guests to whom the menu is addressed
     * @return guests number
     */

    public int getnMenuGuests() {
        return nMenuGuests;
    }

    /**
     * Returns the name of the menu
     * @return menu's name
     */

    public String getName() {
        return name;
    }

    // Method that sorts elementListMenu TODO add this method in the UML

    /**
     * Method that sorts the dishes of the menu by name ( ascending order )
     */

    public void sortMenuElements(){
        menuElementsList.sort(MenuElement.typeComparator);
    }

    /**
     * Method that returns a description of the Menu, in particular its name , price
     * @return the string description
     */

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name).append("\t menuCost: ").append(this.getMenuCost()).append("\t nGuest: ").append(this.nMenuGuests).append("\n");
        for (MenuElement el : menuElementsList) {
            sb.append(el.toString()).append("\n");
        }
        return sb.toString();
    }

    /**
     * Returns the menu's dishes list
     * @return the dishes list
     */

    public ArrayList<MenuElement> getMenuElementsList() {
        return menuElementsList;
    }

    /**
     * Sets the menu's name
     * @param name the name of the menu
     */

    public void setName(String name) {
        this.name = name;
    }
}
