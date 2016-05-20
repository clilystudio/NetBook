.class final Lcom/ushaqi/zhuishushenqi/reader/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/z;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/z;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/z;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method
