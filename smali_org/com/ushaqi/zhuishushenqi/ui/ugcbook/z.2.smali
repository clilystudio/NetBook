.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->notifyDataSetChanged()V

    .line 228
    return-void
.end method
