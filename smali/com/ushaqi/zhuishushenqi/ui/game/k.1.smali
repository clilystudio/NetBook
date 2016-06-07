.class final Lcom/ushaqi/zhuishushenqi/ui/game/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 509
    :pswitch_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/k;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x7f0c04ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
