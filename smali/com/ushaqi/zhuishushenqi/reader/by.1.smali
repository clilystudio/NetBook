.class final Lcom/ushaqi/zhuishushenqi/reader/by;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
# instance fields
.field private synthetic a:Ljava/lang/String;
.field private synthetic b:Ljava/lang/String;
.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/by;->c = p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/by;->a = p2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/by;->b = p3;
    p0.<init>();
    return;
.end method
# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .prologue
    p1.dismiss();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment.a(v0);
    v0.buildDrawingCache();
    v0 = new AppItem();
    v0.<init>();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->a;
    v0.setName(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->b;
    v0.setDownload_link(v1);
    v1 = new y();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->c;
    v2 = v2.getActivity();
    v1.<init>(v2, v0);
    v1.a();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->c;
    v0 = v0.getActivity();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/by;->a;
    v2 = "app_recommend_click";
    Lcom/umeng/a/b.a(v0, v2, v1);
    return;
.end method
