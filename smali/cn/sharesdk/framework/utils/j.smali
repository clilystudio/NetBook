.class public Lcn/sharesdk/framework/utils/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn/sharesdk/framework/utils/j$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/j$a;-><init>()V

    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/j$a;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
