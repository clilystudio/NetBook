.class final Lcom/ushaqi/zhuishushenqi/ui/user/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/al;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/al;I)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {v1, v0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u786e\u5b9a\u8d2d\u4e70 "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->b:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a(Lcom/ushaqi/zhuishushenqi/ui/user/al;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/am;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u670d\u52a1\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 178
    const v0, 0x7f050138

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/an;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/an;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/am;)V

    .line 179
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 189
    :cond_0
    return-void
.end method
