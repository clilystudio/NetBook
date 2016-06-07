.class final Lcom/ushaqi/zhuishushenqi/ui/game/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/ui/game/n;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/n;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->d:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->b:Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->d:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->b:Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->getLikeCount()I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/p;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;)V

    .line 460
    return-void
.end method
