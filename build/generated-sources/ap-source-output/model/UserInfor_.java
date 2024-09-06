package model;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.User;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2023-12-08T22:43:36", comments="EclipseLink-2.7.10.v20211216-rNA")
@StaticMetamodel(UserInfor.class)
public class UserInfor_ { 

    public static volatile SingularAttribute<UserInfor, String> nphone;
    public static volatile SingularAttribute<UserInfor, Long> idUser;
    public static volatile SingularAttribute<UserInfor, String> firstName;
    public static volatile SingularAttribute<UserInfor, String> lastName;
    public static volatile SingularAttribute<UserInfor, String> password;
    public static volatile SingularAttribute<UserInfor, String> address;
    public static volatile SingularAttribute<UserInfor, String> locate;
    public static volatile SingularAttribute<UserInfor, String> idTour;
    public static volatile SingularAttribute<UserInfor, User> user;
    public static volatile SingularAttribute<UserInfor, String> email;

}