.class final Lcom/ushaqi/zhuishushenqi/widget/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/aq;Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return v2

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->e(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->e(I)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x7f0c04ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
