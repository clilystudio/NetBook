.class final Lcom/ushaqi/zhuishushenqi/ui/post/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/y;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/y;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->finish()V

    .line 203
    return-void
.end method
