package model;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Cart;
import model.Invoice;
import model.UserInfor;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2023-12-08T22:43:36", comments="EclipseLink-2.7.10.v20211216-rNA")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile ListAttribute<User, Invoice> invoices;
    public static volatile SingularAttribute<User, Long> userID;
    public static volatile SingularAttribute<User, String> email;
    public static volatile SingularAttribute<User, Cart> cart;
    public static volatile SingularAttribute<User, UserInfor> userinfor;

}