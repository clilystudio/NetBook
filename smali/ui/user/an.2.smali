.class final Lcom/ushaqi/zhuishushenqi/ui/user/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/am;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/am;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/an;->a:Lcom/ushaqi/zhuishushenqi/ui/user/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/ak;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/an;->a:Lcom/ushaqi/zhuishushenqi/ui/user/am;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/an;->a:Lcom/ushaqi/zhuishushenqi/ui/user/am;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v3, "\u6b63\u5728\u8d2d\u4e70"

    invoke-direct {v1, v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 184
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/an;->a:Lcom/ushaqi/zhuishushenqi/ui/user/am;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a(Lcom/ushaqi/zhuishushenqi/ui/user/al;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/an;->a:Lcom/ushaqi/zhuishushenqi/ui/user/am;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/ui/user/am;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->get_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 183
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method
