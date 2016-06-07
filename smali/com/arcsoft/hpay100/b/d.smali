.class public final Lcom/arcsoft/hpay100/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/b/d;->b:Lorg/apache/http/HttpEntity;

    invoke-static {v0, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/b/d;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/b/d;->b:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public final a([Lorg/apache/http/Header;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/b/d;->a:Ljava/util/HashMap;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/arcsoft/hpay100/b/d;->a:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
