.class final Lcom/ushaqi/zhuishushenqi/adapter/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/n;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/n;->a:Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/n;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/n;->a:Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a(Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 86
    return-void
.end method
