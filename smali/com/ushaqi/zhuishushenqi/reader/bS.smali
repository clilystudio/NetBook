.class final Lcom/ushaqi/zhuishushenqi/reader/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(I)V

    .line 84
    return-void
.end method
