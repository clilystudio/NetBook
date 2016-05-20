.class final Lcom/ushaqi/zhuishushenqi/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/s;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "http://m.ximalaya.com/?from=alex-04"

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/s;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/s;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    const-string v1, "ximalaya_url_click"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method
