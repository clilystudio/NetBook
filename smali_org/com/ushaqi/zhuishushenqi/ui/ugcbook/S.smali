.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;I)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;I)V

    .line 338
    return-void
.end method
