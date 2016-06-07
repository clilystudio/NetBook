.class final Lcom/arcsoft/hpay100/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->p(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "input:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->d(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->c(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u8f93\u5165\u7684\u624b\u673a\u53f7\u6709\u8bef\uff0c\u8bf7\u6838\u5bf9\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->q(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/arcsoft/hpay100/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->d(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->c(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u8f93\u5165\u7684\u624b\u673a\u53f7\u6709\u8bef\uff0c\u8bf7\u6838\u5bf9\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->q(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->c(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->d(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/widget/ImageView;Z)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7a0d\u540e"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a()I

    move-result v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->f(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->i(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->r(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->s(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    new-instance v8, Lcom/arcsoft/hpay100/u;

    iget-object v9, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {v8, v9, v10}, Lcom/arcsoft/hpay100/u;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    invoke-static/range {v0 .. v8}, Lcom/arcsoft/hpay100/config/l;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/k;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a()I

    move-result v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->f(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/m;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v4

    const-string v5, "1"

    const-string v6, ""

    move v7, v10

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
