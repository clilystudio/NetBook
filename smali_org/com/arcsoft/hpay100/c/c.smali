.class public Lcom/arcsoft/hpay100/c/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Landroid/graphics/PorterDuff$Mode;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ZLandroid/support/design/widget/K;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 0
    .line 1000
    const-string v0, "layout"

    const-string v1, "hpay_text_progress"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "id"

    const-string v2, "alert_text_show_id"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "style"

    const-string v2, "hpay_progress_dialog"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 0
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/arcsoft/hpay100/c/k;

    invoke-direct {v0, v4}, Lcom/arcsoft/hpay100/c/k;-><init>(Landroid/support/design/widget/K;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/arcsoft/hpay100/c/l;

    invoke-direct {v0, v3, v2}, Lcom/arcsoft/hpay100/c/l;-><init>(ZLandroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/arcsoft/hpay100/c/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/arcsoft/hpay100/c/m;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/c/e;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/c/e;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/c/e;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/arcsoft/hpay100/c/n;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/arcsoft/hpay100/c/n;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/arcsoft/hpay100/c/e;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/c/e;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/arcsoft/hpay100/c/o;

    invoke-direct {v3, p4}, Lcom/arcsoft/hpay100/c/o;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/arcsoft/hpay100/c/e;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/c/e;

    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/c/e;->a(I)Lcom/arcsoft/hpay100/c/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
