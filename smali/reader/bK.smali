.class final Lcom/ushaqi/zhuishushenqi/reader/bK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SwitchCompat;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bK;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    const-string v1, "reader_opt_full_screen"

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bK;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/view/View;Z)V

    .line 111
    return-void
.end method
