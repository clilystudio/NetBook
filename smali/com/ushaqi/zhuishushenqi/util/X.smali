.class public final Lcom/ushaqi/zhuishushenqi/util/X;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;",
        ">;"
    }
.end annotation
# instance fields
.field private final a:Lcom/ushaqi/zhuishushenqi/api/ApiService;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:[Ljava/lang/String;
.field private e:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;
# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V
    .locals 1
    .prologue
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/X;->b = p1;
    p0.Lcom/ushaqi/zhuishushenqi/util/X;->c = p2;
    p0.Lcom/ushaqi/zhuishushenqi/util/X;->e = p3;
    p0.Lcom/ushaqi/zhuishushenqi/util/X;->d = p4;
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    p0.Lcom/ushaqi/zhuishushenqi/util/X;->a = v0;
    return;
.end method
.method private a()Ljava/lang/String;
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    v0 = v0.length;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = "";
    :goto_0
    return v0;
    :cond_1
    v1 = new StringBuffer();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    v2 = 0x0;
    v0 = v0[v2];
    v1.<init>(v0);
    v0 = 0x1;
    :goto_1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    v2 = v2.length;
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_2
    }
    v2 = new StringBuilder();
    v3 = ",";
    v2.<init>(v3);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    v3 = v3[v0];
    v2 = v2.append(v3);
    v2 = v2.toString();
    v1.append(v2);
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_2
    v0 = v1.toString();
    goto :goto_0
.end method
.method private varargs b()Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3
    .prologue
    :try_start_0
    v0 = Lcom/ushaqi/zhuishushenqi/util/Y;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->e;
    v1 = v1.ordinal();
    v0 = v0[v1];
    packed-switch v0, :pswitch_data_0
    :goto_0
    v0 = 0x0;
    :goto_1
    return v0;
    :pswitch_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->c;
    v2 = p0.a();
    v0 = v0.G(v1, v2);
    goto :goto_1
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->c;
    v2 = p0.a();
    v0 = v0.I(v1, v2);
    goto :goto_1
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->c;
    v2 = p0.a();
    v0 = v0.H(v1, v2);
    goto :goto_1
    :pswitch_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->c;
    v2 = p0.a();
    v0.J(v1, v2);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.b();
    return v0;
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .prologue
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    Lcom/ushaqi/zhuishushenqi/a/e.onPostExecute(p0, p1);
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p1.isOk();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->d;
    v2 = v1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v3 = v1[v0];
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/X;->b;
    v5 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SYNC_SUCCESS;
    v5 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.getTypeId(v5);
    Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.updateOrCreate(v4, v3, v5);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    return;
.end method
