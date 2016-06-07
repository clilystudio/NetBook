.class public Lcom/alipay/sdk/protocol/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alipay/sdk/b/e;

.field public b:Lcom/alipay/sdk/b/f;

.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/protocol/c;->a:Lcom/alipay/sdk/b/e;

    iput-object p2, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/b/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    return-void
.end method
