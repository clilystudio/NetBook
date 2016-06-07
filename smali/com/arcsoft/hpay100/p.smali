.class final Lcom/arcsoft/hpay100/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->m(Lcom/arcsoft/hpay100/HPaySdkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->t(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->p(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/p;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->u(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    goto :goto_0
.end method
