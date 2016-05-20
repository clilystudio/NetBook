.class final Lcom/ushaqi/zhuishushenqi/ui/post/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/S;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/S;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/S;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/TextView;I)V

    .line 181
    return-void
.end method
