.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iput-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    .line 472
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c(I)V

    goto :goto_0
.end method
