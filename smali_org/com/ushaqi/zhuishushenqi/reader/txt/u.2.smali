.class final Lcom/ushaqi/zhuishushenqi/reader/txt/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/u;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/u;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z

    .line 1188
    return-void

    .line 1187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
