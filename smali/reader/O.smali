.class final Lcom/ushaqi/zhuishushenqi/reader/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;II)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->a:I

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->a:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->b:I

    if-eq v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->b:I

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->b:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/O;->c:Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->b(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method
