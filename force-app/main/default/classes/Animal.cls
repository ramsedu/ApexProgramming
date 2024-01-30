public virtual class Animal {
    public virtual void makeSound() {
        System.debug('Some generic sound');
    }
    private void makeSoundonlyParent() {
        System.debug('New Sound!!!');
    }
    public void makeSoundParent() {
        System.debug('New Parent Sound!!!');
    }
}
