.class final Lcom/ushaqi/zhuishushenqi/reader/bQ;
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
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bQ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bQ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->finish()V

    .line 70
    return-void
.end method
