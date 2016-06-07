.class final Lcom/ushaqi/zhuishushenqi/reader/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    const-string v1, "key_enable_imersive_mode"

    invoke-static {v0, v1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    const-string v1, "imersive_switcher"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void
.end method
