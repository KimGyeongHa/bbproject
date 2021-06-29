package bb.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class TrinfoDetailDTO {
	private int bno;
	private String cost;
	private String park;
	private String inqu;
	private String conv;
	private String holi;
	private String etc;

}
