.class public final Lcom/qq/e/comm/managers/setting/b;
.super Lcom/qq/e/comm/managers/setting/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/c;-><init>()V

    const-string v0, "getad_report_sampling_rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "expad_report_sampling_rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "clkad_report_sampling_rate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "require_window_focus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "rf"

    const/16 v1, 0x7530

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_ltime"

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_exptime"

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_conn"

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_maxrn"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
