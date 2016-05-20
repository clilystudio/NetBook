.class final Lcom/ushaqi/zhuishushenqi/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/j;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->b:Landroid/content/Context;

    const-string v1, "visit_17k_webpage"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/k;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    :cond_0
    return-void
.end method
