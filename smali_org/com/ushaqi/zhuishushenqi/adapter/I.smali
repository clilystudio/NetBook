.class final Lcom/ushaqi/zhuishushenqi/adapter/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 216
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/I;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->b(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    .line 220
    return-void
.end method
