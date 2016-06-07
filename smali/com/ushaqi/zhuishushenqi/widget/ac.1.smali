.class final Lcom/ushaqi/zhuishushenqi/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/LinearListView;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ac;->b:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/widget/ac;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ac;->b:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ac;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(Lcom/ushaqi/zhuishushenqi/widget/LinearListView;I)V

    .line 98
    return-void
.end method
