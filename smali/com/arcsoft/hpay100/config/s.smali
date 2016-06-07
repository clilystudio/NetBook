.class final Lcom/arcsoft/hpay100/config/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/arcsoft/hpay100/config/k;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/r;Lcom/arcsoft/hpay100/config/k;)V
    .locals 0

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/s;->a:Lcom/arcsoft/hpay100/config/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/s;->a:Lcom/arcsoft/hpay100/config/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/s;->a:Lcom/arcsoft/hpay100/config/k;

    sget-object v1, Lcom/arcsoft/hpay100/config/l;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/k;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
