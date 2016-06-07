.class final Lcom/ushaqi/zhuishushenqi/widget/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/a;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Lcom/ushaqi/zhuishushenqi/view/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u5df2\u590d\u5236"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/W;->c:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u542f\u52a8\u6e38\u620f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
