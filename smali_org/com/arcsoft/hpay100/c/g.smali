.class final Lcom/arcsoft/hpay100/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/c/e;

.field private final synthetic b:Lcom/arcsoft/hpay100/c/a;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/c/e;Lcom/arcsoft/hpay100/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/c/g;->a:Lcom/arcsoft/hpay100/c/e;

    iput-object p2, p0, Lcom/arcsoft/hpay100/c/g;->b:Lcom/arcsoft/hpay100/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/c/g;->a:Lcom/arcsoft/hpay100/c/e;

    invoke-static {v0}, Lcom/arcsoft/hpay100/c/e;->b(Lcom/arcsoft/hpay100/c/e;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/c/g;->b:Lcom/arcsoft/hpay100/c/a;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
