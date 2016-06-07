.class final Lcom/arcsoft/hpay100/web/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/web/m;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/web/HPayWebActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/c;->a:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
