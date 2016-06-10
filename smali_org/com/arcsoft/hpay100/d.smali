.class final Lcom/arcsoft/hpay100/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/y;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/arcsoft/hpay100/y;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/y;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/d;->b:Lcom/arcsoft/hpay100/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/arcsoft/hpay100/z;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/d;->b:Lcom/arcsoft/hpay100/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/d;->b:Lcom/arcsoft/hpay100/y;

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_0
    return-void
.end method
