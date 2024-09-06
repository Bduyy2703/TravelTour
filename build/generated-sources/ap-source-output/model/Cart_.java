package model;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.LineItem;
import model.User;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2023-12-08T22:43:36", comments="EclipseLink-2.7.10.v20211216-rNA")
@StaticMetamodel(Cart.class)
public class Cart_ { 

    public static volatile SingularAttribute<Cart, Long> cartID;
    public static volatile SingularAttribute<Cart, User> user;
    public static volatile ListAttribute<Cart, LineItem> items;

}