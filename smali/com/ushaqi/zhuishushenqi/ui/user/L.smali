.class final Lcom/ushaqi/zhuishushenqi/ui/user/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/L;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/L;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/O;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/L;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;B)V

    .line 190
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/L;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/O;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method
